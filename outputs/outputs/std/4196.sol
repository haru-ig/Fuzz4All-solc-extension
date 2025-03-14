pragma solidity ^0.8.0;
contract Array {
    function GetMax(uint[5] memory x, uint newValue) public pure returns (uint){
        return x[4];
    }
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        x[y] = newValue;
    }
}
contract Array {
    function GetMax(uint[5] memory x, uint newValue) public pure returns (uint){
        return x[3];
    }
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        x[y] = newValue;
    }
}
contract Array{
    function GetMax(uint[5] memory x, uint newValue) public pure returns (uint){
        return newValue;
    }
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        x[y] = newValue;
    }
}

pragma solidity ^0.8.0;
contract Array {
    function GetMax(uint[5] memory x, uint newValue) public pure returns (uint){
        return x[2];
    }
    function Modify(
        uint[5] memory x,
        uint newValue,
        uint y
    ) public pure {
        x[y] = newValue;
    }
    contract Array{
        function GetMax(uint[5] memory x, uint newValue) public pure returns (uint){
                return x[1];
        }
        function Modify(
            uint[5] memory x,
            uint newValue,
            uint y
        ) public pure {
                x[2] = newValue;
        }
    }
}
