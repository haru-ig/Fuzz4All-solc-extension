pragma solidity ^0.8.0;
contract Array{
    function max(uint x, uint y) public pure returns(uint) {
        return x > y? x : y;
    }
}
pragma solidity ^0.8.0;
contract Math{
    uint div(uint x, uint y) public view returns(uint) {
        return x / y;
    }
}
