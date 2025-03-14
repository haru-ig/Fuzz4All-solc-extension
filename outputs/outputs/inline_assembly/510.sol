pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalenty5 {
    fallback() external payable {
        emit Log0;
        emit Log1((msg.sender));
        emit Log((msg.sender), "", "");
    }
    event Log0;
    event Log1(address value);
    event Log(address value, string value2, string value3);
}



contract ModifiedSemanticallyEquivalenty6 {
    fallback() external payable {
        emit Pre0((msg.sender));
        emit Pre1((msg.sender), "1");
        emit Pre((msg.sender), "", "2");
        emit Post1((msg.sender), "3");
        emit Post((msg.sender), "", "2");
        emit Post0;
    }
    event Pre0(address value);
    event Pre1(address value, string value2);
    event Pre(address value, string value2, string value3);
    event Post0;
    event Post1(address value, string value2);
    event Post(address value1, string value2, string value3);
}



contract Comparisons {
    function runAndVerify() public pure {
        MutatedSemanticallyEquivalenty4 aMutatedSemanticallyEquivalenty4 = MutatedSemanticallyEquivalenty4(new MutatedSemanticallyEquivalenty4());
        MutatedSemanticallyEquivalenty5 aMutatedSemanticallyEquivalenty5 = Mutated
