/**
 * @id cpp/autosar/comma-operator-used
 * @name M5-18-1: The comma operator shall not be used
 * @description The comma operator shall not be used.
 * @kind problem
 * @precision very-high
 * @problem.severity error
 * @tags external/autosar/id/m5-18-1
 *       correctness
 *       external/autosar/allocated-target/implementation
 *       external/autosar/enforcement/automated
 *       external/autosar/obligation/required
 */

import cpp
import codingstandards.cpp.autosar

from CommaExpr c
where not isExcluded(c, BannedSyntaxPackage::commaOperatorUsedQuery())
select c, "Use of comma operator"
