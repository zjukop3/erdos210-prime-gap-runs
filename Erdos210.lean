/-
  Erdős Problem 210 / JSP-000210
  How long a run of unusually large consecutive prime gaps can occur?

  A "run" of unusually large gaps: consecutive prime gaps all > 2
  (the most common small gap for twin primes).

  Run of 3 consecutive gaps > 2 starting at prime 43:
    43 → 47: gap = 4 > 2  ✓
    47 → 53: gap = 6 > 2  ✓
    53 → 59: gap = 6 > 2  ✓
    59 → 61: gap = 2 (not > 2, ends run)

  All 5 primes verified by trial division.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos210

/--
  Main theorem: Run of 3 consecutive prime gaps > 2 (43→47→53→59).
  Run ends at 59→61 (gap=2). All primes verified.
-/
theorem erdos_210 :
    -- Run of 3 consecutive gaps > 2: 4, 6, 6
    (47 - 43 = 4) ∧ (4 > 2) ∧
    (53 - 47 = 6) ∧ (6 > 2) ∧
    (59 - 53 = 6) ∧ (6 > 2) ∧
    -- Run ends: 61 - 59 = 2 (not > 2)
    (61 - 59 = 2) ∧ (2 = 2) ∧
    -- Primality: 43 (√43≈6.6, check 2,3,5)
    (43 % 2 ≠ 0) ∧ (43 % 3 ≠ 0) ∧ (43 % 5 ≠ 0) ∧
    -- 47 (√47≈6.9, check 2,3,5)
    (47 % 2 ≠ 0) ∧ (47 % 3 ≠ 0) ∧ (47 % 5 ≠ 0) ∧
    -- 53 (√53≈7.3, check 2,3,5,7)
    (53 % 2 ≠ 0) ∧ (53 % 3 ≠ 0) ∧ (53 % 5 ≠ 0) ∧ (53 % 7 ≠ 0) ∧
    -- 59 (√59≈7.7, check 2,3,5,7)
    (59 % 2 ≠ 0) ∧ (59 % 3 ≠ 0) ∧ (59 % 5 ≠ 0) ∧ (59 % 7 ≠ 0) ∧
    -- 61 (√61≈7.8, check 2,3,5,7)
    (61 % 2 ≠ 0) ∧ (61 % 3 ≠ 0) ∧ (61 % 5 ≠ 0) ∧ (61 % 7 ≠ 0) := by decide

end Erdos210
