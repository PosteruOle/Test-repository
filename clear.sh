#!/bin/bash

echo "--------------------------------------------------------------"
echo "Unlinking a file hello.c in test_dir directory!"
unlink test_dir/hello.c

echo "Unlinking a file test-debug.txt in test_dir directory!"
unlink test_dir/test-debug.txt

echo "Unlinking a file test-text.txt in test_dir directory!"
unlink test_dir/test-text.txt

echo "Unlinking a file a.out in test_dir directory!"
unlink test_dir/a.out

echo "Directory test_dir is now empty so we can finally delete it!"
rmdir test_dir
echo "--------------------------------------------------------------"
