/*
    191
    Binary Search Trace
    main.cpp
    Patrick Rakowicz
*/

// int array[] = {-18, -3, 14, 22, 38, 57, 65, 88, 91, 95};

/*
    Question #1 What positions would be examined in a binary search for 14? What value would be returned by the binarySearch function?
    Answer: 4 1 2 | 2 { (0+9/2 = 4 (0+4)/2 = 2-1 (1+2)/2 = 1 }

    Question #2 What positions would be examined in a binary search for 91? What value would be returned by the binarySearch function?
    Answer: 4 7 8 | 8  { (0+9)/2 = 4 (4+9)/2 = 6+1 (7+9)/2 = 8 }

    Question #3 What positions would be examined in a binary search for -18? What value would be returned by the binarySearch function?
    Answer: 4 2 1 | 1 { (0+9)/2 = 4 (0+4)/2 = 2 (0+2)/2 = 1 }

    Question #4 What positions would be examined in a binary search for 33? What value would be returned by the binarySearch function?
    Answer: None, Because value 33 is not listed in the array when searching
 */
