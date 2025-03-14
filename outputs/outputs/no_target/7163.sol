pragma solidity ^0.8.0;
contract Test {
    uint[] public values;
    uint256 private counter;
    function setValues() public {
        values = [0, 1];
        counter++;
    }
    function addValues(uint256 value) public {
        values.push(value);
        counter++;
    }
    function getValue(uint256 index) public pure returns (uint256) {
        require(index < values.length, "index out of bounds");
        return values[index];
    }
}


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);


    function transferFrom(address sender, address recipient, uint256
