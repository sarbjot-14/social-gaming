#include "../coroutine/task.h"
#include "ASTNode.h"
#include "ASTVisitor.h"
#include <iostream>
#include <stdlib.h>
#include <string>

// using namespace std;
using namespace AST;

int main() {
  // run with: g++ -std=c++20 ASTNode.cpp main.cpp -o main
  // g++ -DGCC -std=c++2a -O3 -fcoroutines ASTNode.cpp ASTVisitor.cpp main.cpp
  // -o main

  //

  std::cout << "Visitor simulator\n";

  /*
    // create enviroment
    auto enviro = Environment{nullptr};

    // create dsl, any variable, ex. Name of game
    DSLValue dsl{std::string{"Greeting Game"}};

    // create list of players
    DSLValue one{1};
    DSLValue two{2};
    DSLValue three{2};

    DSLValue players{List{one, two, three}};

    // insert DSL
    enviro.setBinding(std::string{"players"}, players);

    // insert DSL
    enviro.setBinding(std::string{"Game Name"}, dsl);

    // insert list of players

    // create communication obj
    PrintCommunicator comm{};

    // create interpreter with enviroment and communication
    Interpreter interp = Interpreter{std::move(enviro), comm};

    std::unique_ptr<InputText> in = std::make_unique<InputText>(
        std::make_unique<FormatNode>(std::string{"How are you"}),
        std::make_unique<Variable>(std::string{"player"}),
        std::make_unique<VarDeclaration>(std::string{"response"}));

    // players , player, global message

    std::unique_ptr<GlobalMessage> mess = std::make_unique<GlobalMessage>(
        std::make_unique<FormatNode>(std::string{"Message One"}));

    std::unique_ptr<GlobalMessage> mess2 = std::make_unique<GlobalMessage>(
        std::make_unique<FormatNode>(std::string{"Message Two"}));

    std::unique_ptr<Rules> rule = std::make_unique<Rules>();
    rule->appendChild(std::move(mess));
    rule->appendChild(std::move(mess2));

    std::unique_ptr<ParallelFor> par = std::make_unique<ParallelFor>(
        std::make_unique<Variable>(std::string{"players"}),
        std::make_unique<VarDeclaration>(std::string{"player"}),
    std::move(rule));

    auto root = AST::AST(std::move(par));

    auto astTask = root.accept(interp);
    while (astTask.resume()) {
    }

    Printer printer = Printer{std::cout};
    auto task = root.accept(printer);
    while (task.resume()) {
    }
    */
}
