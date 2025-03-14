pragma solidity ^0.8.0;
contract ModYulContract {
    function main2(uint) {
        SemanticYulContract semanticMyContract = new SemanticYulContract();
        semanticMyContract.add();
        semanticMyContract.subtract(1);
        semanticMyContract.multiply(50);
        semanticMyContract.divide(50);
         semanticMyContract.power(50);
       semanticMyContract.subtract(1);

    }
}
