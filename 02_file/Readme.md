# 02. File --- [[Back]](https://github.com/Wilhelmine21/LearningPerl#perl)
* **source: from ChatGPT**
* The content may not be entirely accurate.
## Basic
* Perl provides a number of functions and modules to handle file operations. Here are some of the most common file operations and how to perform them in Perl:

    * 1. Opening a file: To open a file in Perl, use the open function. For example:
        ```perl
        #!/usr/bin/perl -w
        open(my $fh, "<", "file.txt") or die "Cannot open file: $!";
        ```
        * In this example, $fh is a file handle that represents the file file.txt. The < symbol indicates that we want to open the file for reading. If the file could not be opened for any reason, the die function will print an error message and exit the program.
    * 2. Reading a file: To read the contents of a file in Perl, you can use the readline function. For example:
        ```perl
        while (my $line = <$fh>) {
        print $line;
        }
        ```
        * In this example, the while loop will read one line of the file at a time and print it to the screen.

    * 3. Writing to a file: To write to a file in Perl, use the print function. For example:
        ```perl
        open(my $fh, ">", "file.txt") or die "Cannot open file: $!";
        print $fh "This is a line of text.\n";
        ```
        * In this example, we open the file for writing with the > symbol. The print function writes the specified text to the file.

    * 4. Closing a file: When you're done with a file, it's a good idea to close it to free up system resources. To close a file in Perl, use the close function. For example:
        ```perl
        close $fh or die "Cannot close file: $!";
        ```
    * These are the basics of file operations in Perl. There are many other functions and modules you can use for more advanced file operations, such as copying, moving, or deleting files, reading and writing binary data, and more.
    <!-- * 2. Reading from a file:
        ```perl
        #!/usr/bin/perl -w
        # Open the file for reading
        open my $fh, "<", "file.txt" or die "Cannot open file: $!";
        # Read the file line by line
        while (my $line = <$fh>) {
        print $line; 
        }
        # Close the file
        close $fh;
        ``` -->

## tie::file 
* The tie::file module in Perl allows you to create a relationship between a file on disk and a Perl variable, so that you can access the contents of the file as if it were an array or a hash.
* Here's a simple example of how to use tie::file to read a file line by line:
    ```perl
    #!/usr/bin/perl -w
    use Tie::File;
    # Tie the file to the array
    tie @array, 'Tie::File', "file.txt" or die "Cannot open file: $!";
    # Loop through the array and print each line
    foreach (@array) {
    print "$_\n";
    }
    ```
* In this example, we first use the tie function to create a relationship between the file file.txt and the array @array. Then, we use a foreach loop to iterate over the elements of the array, which are the lines of the file.

* Note that when you use tie::file, any changes you make to the array will be automatically reflected in the file on disk, and vice versa.

* Here's a simple example of how to use tie::file to modify a file:
    ```perl
    #!/usr/bin/perl -w
    use Tie::File;
    # Tie the file to the array
    tie @array, 'Tie::File', "file.txt" or die "Cannot open file: $!";
    # Modify the first line of the file
    $array[0] = "This is the first line.";
    # Add a new line to the end of the file
    push @array, "This is a new line.";
    # Remove the second line of the file
    splice @array, 1, 1;
    # Save the changes to the file
    untie @array;
    ```
    * In this example, we first tie the file to the array as in the previous example. Then, we use the array to modify the contents of the file by changing the first line, adding a new line, and removing the second line. Finally, we use the untie function to break the relationship between the file and the array and save the changes to the file.
