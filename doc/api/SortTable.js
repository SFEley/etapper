/**
 * Sort a table, leaving all "fixed" rows in place
 */
function sortTable(tableId, col)
{
    // Grab the table, its body and an array of rows
    var table = document.getElementById(tableId);
    var tbody = table.getElementsByTagName("tbody")[0];
	var rows = filterForParents(tbody.getElementsByTagName("tr"), tbody);

    // Figure out ascending or descending
    var lastSort = table.getAttribute("sort");
    var asc = lastSort != col;

    // Keep 3 arrays around. sorted is the running list of "already sorted" rows
    // that we add to only when we need to "flush" the current group. Current bunch is
    // all of the "sortable" rows we find in between fixed rows (a group). Classnames is 
    // an array of the original class names so that even though the data in the rows changes,
    // it all still looks the same since the class isn't changing
    var sorted = new Array();
    var currentBunch = new Array();
    var classNames = new Array();
    var groupedElements = new Array();
    var groupCounter = 1;

    // Iterate the rows, adding sortable rows to the current bunch. When we hit a fixed
    // row, sort the current bunch since that group is now finished.
	
    for (var i = 0; i < rows.length; i++)
    {
        var row = rows[i];
        var data = new Object();
        data.row = row;
        classNames[i] = row.className;

        if (row.getAttribute("fixed"))  // fixed row. sort current group (if exists)
        {
            // sort the current set of rows in the group
            currentBunch.sort(getSortFunc(asc));

            // append the newly sorted rows to the entire sorted list
            for( var q = 0; q < currentBunch.length; q++ )
            {
                var groupedElem = "false";

                // Check if the current row is supposed to have a grouped row after it
                for (var z = 0 ; z < groupedElements.length ; z++)
                {
                    if (currentBunch[q].group && groupedElements[z].group == currentBunch[q].group)
                    {
                        groupedElem = groupedElements[z];
                        groupedElements.splice(z, 1); // remove it from the array so we don't search it again
                    }
                }

                // Append onto the entire list, then append a grouped elem if necessary
                sorted[sorted.length] = currentBunch[q];
                if (groupedElem != "false")
                {
                    sorted[sorted.length] = groupedElem;
                }
            }

            // add the fixed line and start the unsorted set over
            sorted[sorted.length] = data;
            currentBunch = new Array();
            groupedElements = new Array();
        }
        else if (row.getAttribute("groupWithPrevious")) // If a row is specified as "group with previous" row, store it in a separate array
        {
            data.group = groupCounter;
            if (currentBunch.length > 0)
            {
                currentBunch[currentBunch.length-1].group = groupCounter;
            }

            groupedElements[groupedElements.length] = data;
            groupCounter++;
        }
        else
        {
            // non-fixed row, find its sort key and add it to the current unsorted bunch
			var cells = filterForParents(row.getElementsByTagName("td"), row);
            data.key = getSortKey(cells[col]);
            currentBunch[currentBunch.length] = data;
        }
    }
    
    // Add the remaining bunch (possibly everything if no fixed fields)
    currentBunch.sort(getSortFunc(asc));
    for( var q = 0; q < currentBunch.length; q++ )
    {
        var groupedElem = "false";

        // Check if the current row is supposed to have a grouped row after it
        for (var z = 0 ; z < groupedElements.length ; z++)
        {
            if (currentBunch[q].group && groupedElements[z].group == currentBunch[q].group)
            {
                groupedElem = groupedElements[z];
                groupedElements.splice(z, 1); // remove it from the array so we don't search it again
            }
        }

        // Append onto the entire list, then append a grouped elem if necessary
        sorted[sorted.length] = currentBunch[q];
        if (groupedElem != "false")
        {
            sorted[sorted.length] = groupedElem;
        }
    }

    // Take the sorted rows and replace the table's rows with those
    var keys = "";
    for (var i = 0; i < sorted.length; i++)
    {
        sorted[i].row.className = classNames[i];
        tbody.appendChild(sorted[i].row);
    }

    // Reverse ascending/descending attribute for next time
    table.setAttribute("sort", asc ? col : -1);
}

function filterForParents(items, targetParent)
{
    var filteredItems = new Array();
    for( var i = 0; i < items.length; i++ )
        if( items[i].parentNode == targetParent )
            filteredItems[filteredItems.length] = items[i];
			
    return filteredItems;
}

/**
 * Given some TD cell in a row, return its sort key (if it has one).
 */
function getSortKey(cell)
{
    var key = "";
    if (cell)
    {
        var key = cell.getAttribute("sort");
        if( key )
            return key;
		
		key = "";
        var child = cell.firstChild;
        while( child && !key )   // have more children w/o finding a valid sort key
        {
            key = child.nodeValue;
            child = child.firstChild;
        }
    }
    return key;
}

/**
 * Based on an "asc" flag, return a function that will compare the keys in an 
 * ascending or descending fashion
 */
function getSortFunc(asc)
{
    return asc ? function(a, b)
                 {
                     if (a.key.toUpperCase() < b.key.toUpperCase()) return -1;
                     if (a.key.toUpperCase() > b.key.toUpperCase()) return 1;
                     return 0;
                 }
               : function(a, b)
                 {
                     if (a.key.toUpperCase() > b.key.toUpperCase()) return -1;
                     if (a.key.toUpperCase() < b.key.toUpperCase()) return 1;
                     return 0;
                 };
}
