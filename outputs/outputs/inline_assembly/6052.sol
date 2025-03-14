pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample2 {
    function main() public pure {
        uint256[] memory values;
        uint256 _val;
        (_val, values[1]) = (_val, _val - 1);
    }
}
contract MutatedSemanticallyEquivalentAssemblyExample {
    function main() public pure {

        uint256[] memory values;
        uint256 _val;
        (_val, values[1]) = (_val, _val - 1);

        uint256[] memory returnValues;
        uint256 _val2;
        (_val2, returnValues[1]) = (_val2, _val2 / 32);

        values[1] = 16;

        address addr1;
        (, addr1) = (14, "Hello World!");
    }
}
