pragma solidity ^0.8.0;
contract InliningContract {
    using SemanticYulContract for SemanticYulContract.MultiplyData;
    SemanticYulContract.MultiplyData.MultiplyOutput multiply(SemanticYulContract.MultiplyData.MultiplyInput x);
}
