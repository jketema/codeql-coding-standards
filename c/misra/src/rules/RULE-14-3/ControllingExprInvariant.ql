/**
 * @id c/misra/controlling-expr-invariant
 * @name RULE-14-3: Controlling expressions shall not be invariant
 * @description If a controlling expression has an invariant value then it is possible that there is
 *              a programming error.
 * @kind problem
 * @precision very-high
 * @problem.severity error
 * @tags external/misra/id/rule-14-3
 *       correctness
 *       maintainability
 *       readability
 *       external/misra/obligation/required
 */

import cpp
import codingstandards.c.misra
import cpp
import codingstandards.c.misra

from ControlFlowNode expr, string message
where
  not isExcluded(expr, Statements5Package::controllingExprInvariantQuery()) and
  (
    exists(IfStmt ifStmt |
      (
        ifStmt.getControllingExpr() = expr and
        (
          conditionAlwaysFalse(expr)
          or
          conditionAlwaysTrue(expr)
        )
      )
    ) and
    message = "Controlling expression in if statement has invariant value."
    or
    exists(Loop loop |
      loop.getControllingExpr() = expr and
      (
        conditionAlwaysFalse(expr)
        or
        conditionAlwaysTrue(expr)
      )
    ) and
    message = "Controlling expression in loop statement has invariant value."
    or
    exists(SwitchStmt switch |
      switch.getControllingExpr() = expr and
      (
        conditionAlwaysFalse(expr) or
        conditionAlwaysTrue(expr)
      )
    ) and
    message = "Controlling expression in switch statement has invariant value."
  ) and
  // Exclude macros, which may generate seemingly invariant expressions
  not expr.isAffectedByMacro()
select expr, message
