# ExtractStringFromPoint in verifiable-private-overrides

* Id: siv-org/verifiable-private-overrides/hideaki_takahashi-Circom-4
* Project: https://github.com/siv-org/verifiable-private-overrides
* Commit: 7bda2311d7a33dcab611cfea0c67707b0b65c24c
* Fix Commit: 411bd796d901bcc80e441a4827882a091e9c5f50
* DSL: Circom
* Vulnerability: Under-Constrained
* Impact: Soundness
* Root Cause: Assigned but Unconstrained
* Reproduced: True
* Location
  - Path: circuits/ExtractStringFromPoint.circom
  - Function: ExtractStringFromPoint
  - Line: 15-50
* Source: GitHub Security Advisory
  - Source Link: https://github.com/siv-org/verifiable-private-overrides/pull/13
  - Bug ID: Circom-4: ExtractStringFromPoint Under-Constrained Assignment
* Commands
  - Setup Environment: `./zkbugs_setup.sh`
  - Reproduce: `./zkbugs_exploit.sh`
  - Compile and Preprocess: `./zkbugs_compile_setup.sh`
  - Positive Test: `./zkbugs_positive_test.sh`
  - Find Exploit: `./zkbugs_find_exploit.sh`
  - Clean: `./zkbugs_clean.sh`

## Short Description of the Vulnerability

The circuit uses the unconstrained assignment operator `<--` to assign values to intermediate signals like `shiftedFirstByte`. This allows a malicious prover to assign arbitrary values that satisfy the arithmetic constraints but not the intended logic, bypassing length validation.

## Short Description of the Exploit

A prover can assign arbitrary values to unconstrained signals and create proofs with incorrect length values (e.g., claiming length=1 when correct value is 0).

## Proposed Mitigation

Use properly-constrained right-shift operations with Num2Bits and Bits2Num templates to rigorously validate bit-level constraints during arithmetic operations.

