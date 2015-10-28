/*
TER-Server
*/

#ifndef TRINITY_DB2STORES_H
#define TRINITY_DB2STORES_H

#include "DB2Store.h"
#include "DB2Structure.h"

#include <string> 
#include <list>

extern DB2Storage <ItemEntry> sItemStore;
extern DB2Storage <ItemCurrencyCostEntry> sItemCurrencyCostStore;
extern DB2Storage <ItemExtendedCostEntry> sItemExtendedCostStore;
extern DB2Storage <ItemSparseEntry> sItemSparseStore;
extern DB2Storage <KeyChainEntry> sKeyChainStore; 

void LoadDB2Stores(std::string const& dataPath);

DB2StorageBase const* GetDB2Storage(uint32 type);

#endif