pragma solidity ^0.8.0;
contract SemanticMutatedExample {
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;
    SemanticMutationsExample smartContractExample1;
    SemanticMutationsExample smartContractExample2;
    SemanticMutationsExample smartContractExample3;
    SemanticMutationsExample smartContractExample4;
    SemanticMutationsExample smartContractExample5;
    SemanticMutationsExample smartContractExample6;

    function semanticMutatedExample1() public {
        smartContractExample1.semanticMutatedExample.value(1 ether)(_addr1);
    }
    function semanticMutatedExample2() public {
        smartContractExample2.semanticMutatedExample.value(1 ether)(_addr2);
    }
    function semanticMutatedExample3() public {
        smartContractExample3.semanticMutatedExample.value(1 ether)(_addr3);
    }
    function semanticMutatedExample4() public {
        smartContractExample4.semanticMutatedExample.value(1 ether)(_addr4);
    }
    function semanticMutatedExample5() public {
        smartContractExample5.semanticMutatedExample.value(1 ether)(_addr5);
    }
    function semanticMutatedExample6() public {
        smartContractExample6.semanticMutatedExample.value(1 ether)(_addr6);
    }
    function semanticMutatedExample() public {
        semanticMutatedExample1();
    }
}
/* Please create a contract that inherits from other contracts.

Use inherited() to make the contract's inheritance chain from the top down.
You can use inherit here and pass a custom initializer function to the contract constructor
and then call the inherited() function. Remember that you can only inherit contracts that they inherit them.

Use super to make the contract's inheritance chain from the bottom
