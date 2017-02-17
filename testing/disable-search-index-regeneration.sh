#!/usr/bin/env bash

#Disable the search indexer to TRUNCATE the s_search_index table on the first requests. This will commit your active test transactions and let your tests fail.
mysql -h __DB_HOST__ -u __DB_USER__ -p__DB_PASSWORD__ -e "REPLACE INTO s_core_config_values (element_id, shop_id, value) SELECT scce.id, scs.id, 'i:1;' FROM s_core_config_elements scce INNER JOIN s_core_shops scs WHERE scce.name IN ('topSellerRefreshStrategy', 'seoRefreshStrategy', 'searchRefreshStrategy', 'similarRefreshStrategy');" __DB_DATABASE__