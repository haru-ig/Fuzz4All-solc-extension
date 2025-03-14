pragma solidity ^0.8.0;
contract BetterCase123 {
}
contract BetterCase124 {
    uint256 public constant ZERO = 0;
}
address[] public accounts;
contract ArrayWithAddresses {
    mapping(uint => uint[]) accountNumbers;
    mapping(uint => bytes) accountNames;

    function add(uint256 value, uint256 index) public {
        uint[] memory tempArray = accountNumbers[index];
        uint[] memory accountNums = new uint[](tempArray.length + 1);
        accountNums[accountNums.length - 1] = tempArray[tempArray.length - 1] + value;
        accountNums[0] = value;
        accountNumbers[index] = accountNums;
    }

    function size() public view returns (uint){
        uint length = 0;
        for (uint i = 0; i < accountNumbers.length; i++) {
            uint len = accountNumbers[i].length;
            if (len > length){
                length = len;
            }
        }
        return length;
    }

    function get(uint256 index) public view returns (uint){
        uint[] memory accountNums = accountNumbers[index];
        if (accountNums[accountNums.length - 1] > 0){
            return accountNums[accountNums.length - 1];
        }
    }

    function find() public view returns (address){
        return accounts[0];




    }

    function find1(address[] memory account, uint256 index) public view returns (address){
        return find(account, index);



    }

    function find(address[] memory account, uint256 index) public view returns (address){
        address out = account[index];
        uint[] memory accountNums = accountNumbers[index];
        if (accountNums[accountNums.length - 1] > 0){
            return account[index];
        }
    }
}
