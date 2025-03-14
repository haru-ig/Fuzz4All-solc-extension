pragma solidity ^0.8.0;
contract MutatedInjection
{
    function mutatedInjection(address payable a, address payable b, address payable c) public pure {
        address[] memory array = new address[](3);
        array[0] = a;
        array[1] = b;
        array[2] = c;
    }
}
contract MutatedInjection
{
    function mutatedInjection(uint a, uint b, uint c) public pure {
        address[] memory array = new address[](3);
        array[0] = (uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(a))))))))))));
        array[1] = uint8();
        array[address(0)] = uint8();
    }
}
contract MutatedInjection
{
    function mutatedInjection(uint160 a, uint160 b, uint160 c) public pure {
        address[] memory array = new address[](3);
        array[0] = (uint8(address(0)));
        array[1] = uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(uint160(b)))))))))));
        array[2] = a;
    }
}
contract MutatedInjection
{
    function mutatedInjection(uint80 a, uint80 b, uint80 c, uint80 e, uint80 f) public pure {
        address[] memory array = new address[](4);
        array[0] = (uint8(0));
        array[1] = uint80(uint80(uint80(uint160(uint80(uint160(uint80(uint80(uint80(uint160(uint80(uint160(uint160(uint160(uint80(uint160(uint160(uint160(uint160(uint160(a))))))))))))))))))))";
        array[2] = a;
        array[3] = b;
    }
}
