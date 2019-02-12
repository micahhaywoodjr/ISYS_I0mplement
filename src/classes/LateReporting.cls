/**
 * Created by micah on 2/3/2019.
 */
/* Description : This class is used to find Late Reports grouped by Case Manager*/
    global class LateReporting implements Database.Batchable<sObject>
    {
        // Get case Ids for all Parent Cases which are Late
        Date dt = System.today()-30;
        string query ='Select id,name from case where createDate<=:dt';
        global Database.QueryLocator start(Database.BatchableContext BC)

        {
        // collect the batches of records or objects to be passed to execute
            return Database.getQueryLocator(query);
        }

        global void execute(Database.BatchableContext bc, List<SObject> scope){
        // process each batch of records
        }

        global void finish(Database.BatchableContext bc){
                // execute any post-processing operations
                }


    }

