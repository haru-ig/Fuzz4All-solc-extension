pragma solidity ^0.8.0;
contract Test66 {
    uint256[] public a;

    function test() public view returns (uint256){
        return a.length;
    }
}



import "./Test66.sol";
contract Test78 is Test66 {
    function test() public view returns (uint256){
        return a.length;
    }
}


contract Test79 {
    uint256[] private a;
    function g() public {
        a.push(2);
        a.push(5);
    }
}


pragma solidity ^0.8.0;
contract Test79 {
    uint256[] public a;

    function test() public view returns (uint256){
        return a.length;
    }
}

contract Test85 {
    uint256[] public a;
    uint256 public b;

    function f() public {
        a = [1];
        b = a.length;
    }
}

pragma solidity ^0.8.0;
contract Test85 {
    uint256[] public a;
    uint256 public b;

    function test() public view returns (uint256){
        return a.length;
    }
}
