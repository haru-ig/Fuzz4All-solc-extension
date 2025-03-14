pragma solidity ^0.8.0;
interface Context {
    function msgSender() external returns (address);
}
interface BaseToken {
    function totalSupply() external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function transfer(address recipient, uint amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint amount) external returns (bool);
}
interface IERC20 {
    function decimals() external pure returns (uint8);
    function transfer(address to, uint tokens) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint tokens) external returns (bool);
    function increaseAllowance(address spender, uint addedValue) external returns (bool);
    function decreaseAllowance(address spender, uint subtractedValue) external returns (bool);
}
contract SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        assert(c / a == b);
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {

        uint256 c = a / b;

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }
}
contract Array is SafeMath {
    using SafeMath for uint256;
    uint256[] internal myArray;
    function push(uint256 i) public {
        myArray.push(i);
    }
    function get(uint256 i) public view returns (uint256) {
        return myArray[i];
    }
    function getLen() public view returns (uint256) {
        return myArray.length;
    }
}
contract Multiprecision is SafeMath {
    using SafeMath for uint256;
    uint8 internal constant decimals = 18;
    uint256 internal precision;
    uint256[2] internal values = [0, 0];
    uint256[2] internal baseValues = [0, 0];
    mapping(uint256 => uint256[2]) internal maps = [0, 0];
    mapping(uint256 => uint256[2]) internal tmpMaps = [0, 0];
