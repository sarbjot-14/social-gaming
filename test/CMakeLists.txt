include(CTest)
enable_testing()

add_executable(runAllTests
    ASTTests.cpp
    DSLValueTest.cpp
    ParseToCFGTest.cpp
    ExpressionParserTests.cpp
    EnvironmentTest.cpp
)

set_target_properties(runAllTests 
    PROPERTIES
    LINKER_LANGUAGE CXX
    CXX_STANDARD 20
)

target_link_libraries(runAllTests json AST gtest gmock gtest_main)

add_test(NAME AllTests COMMAND runAllTests)
