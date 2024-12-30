# Unhandled Key Errors in Dart API Calls

This repository demonstrates a common error in Dart applications that interact with APIs:  failure to handle cases where the JSON response might not contain the expected keys.  The `bug.dart` file shows the problematic code. The `bugSolution.dart` file provides a corrected version.

## Problem

The `fetchData` function in `bug.dart` makes an API call and attempts to access a specific key ('someKey') from the JSON response. If this key is missing, a runtime error will occur. 

## Solution

The `bugSolution.dart` file demonstrates a more robust approach. It checks for the existence of the key before attempting to access it, preventing the runtime error.  Appropriate error handling is also shown. 