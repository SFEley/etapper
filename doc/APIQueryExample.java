// Construct Request Object
PagedExistingQueryResultsRequest request = new PagedExistingQueryResultsRequest();

// Specify the maximum number of results you would like to return
// when processing the query, anything from 1 to 500
request.setCount(500);

// Create your query in eTapestry first and reference it here.  I'm not
// sure what data you are seeking to pull (Accounts or Journal Entries)
// or the query criteria you will be using (perhaps Created By and Last
// Modified By Date), but I could assist if needed.  FYI: This example
// assumes your query return type is Accounts.
request.setQuery("QueryCategoryName::QueryName");

// Make Request
PagedQueryResultsResponse response = APIConnection.getExistingQueryResults(request);

// Output Results
printNames(response);

// Determine if more results exist (result count exceeds request count)
while (APIConnection.hasMoreQueryResults())
{
    printNames(APIConnection.getNextQueryResults());
}

// Output Account Name Method
private void printNames(response)
{
    if (response.getData() == null) return;

    Iterator itr = response.getData().iterator();
    while (itr.hasNext())
    {
	Account account = (Account) itr.next();

        System.out.println("Name: " + account.getName());
    }
}


// Complex Type Details

PagedExistingQueryResultsRequest

start - set to zero (indexed based position within the query results to start retrieving results)
count - see not above within code
clearCache - set to false (successive calls to retrieve results for the same query will use the cached results from the initial call)
query - set as "QueryCategoryName::QueryName" (required)
accountType - set to zero


PagedQueryResultsResponse

start - indexed based position the query results started from
count - number of query results returned
total - total number of results within query
pages - number of query result pages (based upon request count and total)
usedCache - whether query result cache was used or query was run real time
data - collection/array of query results (could be Accounts of Journal Entries - determined by query itself)

