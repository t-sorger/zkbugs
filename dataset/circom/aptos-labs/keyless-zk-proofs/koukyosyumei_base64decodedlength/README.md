# Base64DecodedLength in keyless-zk-proofs (Not Reproduce)

* Id: aptos-labs/keyless-zk-proofs/koukyosyumei-Circom-3
* Project: https://github.com/aptos-labs/keyless-zk-proofs
* Commit: fd160220a88a5becf0f91ea1a5425fdd537c7399
* Fix Commit: bb543f91d68d58be941e9af8391577e711d21f7c
* DSL: Circom
* Vulnerability: Other Programming Errors
* Impact: Soundness
* Root Cause: Other Programming Errors
* Reproduced: False
* Location
  - Path: circuit/templates/helpers/base64url/Base64UrlDecodedLength.circom
  - Function: Base64UrlDecodedLength
  - Line: 1-50
* Source: GitHub Security Advisory
  - Source Link: https://github.com/aptos-labs/keyless-zk-proofs/issues/50
  - Bug ID: Circom-3: Base64DecodedLength Code Quality Issue
* Commands
  - Setup Environment: ``
  - Reproduce: ``
  - Compile and Preprocess: ``
  - Positive Test: ``
  - Find Exploit: ``
  - Clean: ``

## Short Description of the Vulnerability

The Base64UrlDecodedLength circuit contains an unused output signal that does not affect security but represents poor code quality and unnecessary constraint generation.

## Short Description of the Exploit

Not a security vulnerability - code quality issue with unused output signal.

## Proposed Mitigation

Remove the unused output signal to reduce circuit complexity and improve code clarity.

