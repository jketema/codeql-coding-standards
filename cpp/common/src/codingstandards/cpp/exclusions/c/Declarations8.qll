//** THIS FILE IS AUTOGENERATED, DO NOT MODIFY DIRECTLY.  **/
import cpp
import RuleMetadata
import codingstandards.cpp.exclusions.RuleMetadata

newtype Declarations8Query =
  TAppropriateStorageDurationsStackAdressEscapeQuery() or
  TAppropriateStorageDurationsFunctionReturnQuery()

predicate isDeclarations8QueryMetadata(Query query, string queryId, string ruleId, string category) {
  query =
    // `Query` instance for the `appropriateStorageDurationsStackAdressEscape` query
    Declarations8Package::appropriateStorageDurationsStackAdressEscapeQuery() and
  queryId =
    // `@id` for the `appropriateStorageDurationsStackAdressEscape` query
    "c/cert/appropriate-storage-durations-stack-adress-escape" and
  ruleId = "DCL30-C" and
  category = "rule"
  or
  query =
    // `Query` instance for the `appropriateStorageDurationsFunctionReturn` query
    Declarations8Package::appropriateStorageDurationsFunctionReturnQuery() and
  queryId =
    // `@id` for the `appropriateStorageDurationsFunctionReturn` query
    "c/cert/appropriate-storage-durations-function-return" and
  ruleId = "DCL30-C" and
  category = "rule"
}

module Declarations8Package {
  Query appropriateStorageDurationsStackAdressEscapeQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `appropriateStorageDurationsStackAdressEscape` query
      TQueryC(TDeclarations8PackageQuery(TAppropriateStorageDurationsStackAdressEscapeQuery()))
  }

  Query appropriateStorageDurationsFunctionReturnQuery() {
    //autogenerate `Query` type
    result =
      // `Query` type for `appropriateStorageDurationsFunctionReturn` query
      TQueryC(TDeclarations8PackageQuery(TAppropriateStorageDurationsFunctionReturnQuery()))
  }
}