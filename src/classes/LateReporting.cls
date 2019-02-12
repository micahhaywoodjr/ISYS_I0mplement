/**
 * Created by micah on 2/3/2019.
 */
/* Description : This class is used to find Late Reports grouped by Case Manager*/
    global class LateReporting implements Database.Batchable<sObject>
    {
        // Get case Ids of all Parent Cases thare are Late
        global (Database.QueryLocator) start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        }
        global void execute(Database.BatchableContext bc, List<P> records){
        // process each batch of records
        }
        global void finish(Database.BatchableContext bc){
                // execute any post-processing operations
                }

                }

