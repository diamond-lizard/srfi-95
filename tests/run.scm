(import srfi-95 test)

(test-group
 "srfi-95"

 (test-assert
  "sorted?"
  (sorted? '(1 2 3) <))

 (test
  "sorted? with unsorted"
  #f
  (sorted? '(1 2 3) >))

 (test-assert
  "sorted? with key"
  (sorted? '(#\a #\b #\c) < char->integer))

 (test
  "merge"
  '(1 2 3 4 5 6)
  (merge '(1 2 3) '(4 5 6) <))

 (test
  "merge!"
  '(1 2 3 4 5 6)
  (merge! '(1 2 3) '(4 5 6) <))

 (test
  "sort"
  '(1 2 3)
  (sort '(3 2 1) <))

 (test
  "sort!"
  '(1 2 3)
  (sort! '(3 2 1) <)))
