pragma solidity ^0.8.0;
interface Mutate {
    function changeArray(uint[] memory array) external;
    function changeMap(uint => string) external;
    function changeBool(uint) external;
    function changeUint(uint[]) external;
    function changeAddress(address address_) public;
    function changeString(uint, string memory) public;
    function setSum(uint) public;
    function setBalance(uint, uint) external;
}
pragma solidity ^0.8.0;
interface Mutate {
    function changeArray(uint[] memory array_) external;
    function changeMap(uint => string) external;
    function changeAddress(address address_) public;
    function changeString(uint, string memory) public;
    function setSum(uint) public;
    function setBalance(uint, uint) external;
}

pragma solidity ^0.8.0;
contract Mutate {
    Mutate mock;
    address owner;

    constructor () {
        mock = Mutate(0);
    	owner = msg.sender;
    }

      function execute_1 (address from, uint value) public {


        mock.changeAddress.value(value.add(100)){
            (address)0;
        }

        mock.changeString.value(value.add(1)){
            (string memory)0x0;
        }

        mock.changeBool.value(value.add(2)){
            false;
        }

        mock.changeArray.value(value.add(100)){
            (uint[] memory)0x0;
        }

        mock.changeMap.value(value.add(2)){
            (address, string memory)0x0;
        }

        mock.changeUint.value(value.add(100)){
            (uint[] memory)0x0;
        }

        bool isSum = mock.setSum.value(value.add(10))();

        mock.setBalance.value(value.add(2)){
            owner, value;
        }

        require(mock.setSum(value).isSuccess);
    }


    function execute_2 (uint) public {
    }

    function execute_3 () public {
       (uint[])memory numbers;
        numbers.push(1000, 10000);
        mock.changeArray(numbers);
        mock.changeArray(numbers);
    }

    function execute_4 () public {
        (uint mapAddress, uint) memory number;
        number.mapAddress = ((uint) (10**18));
        number.number = 5;
        mock.changeMap(number);
    }
}
