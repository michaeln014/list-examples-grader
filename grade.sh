CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
if [[ -f student-submission/ListExamples.java ]]
then
    cp student-submission/ListExamples.java grading-area
else
    echo File not found
    exit 1
fi

cp TestListExamples.java grading-area
cp GradeServer.java grading-area

cp -r lib grading-area
cd grading-area

javac -cp '.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar' *.java