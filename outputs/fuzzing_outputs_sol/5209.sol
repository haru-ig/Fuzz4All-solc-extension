pragma solidity ^0.8.0;
contract P14{
        contract C23{
                function c() public payable {}
        }
        contract C24{
                function c() public payable {}
        }
}


contract C17 is C24{
        function c() public payable {}
}
contract C18 is C24, C17{}
contract C21 is C18{
        function c() public payable {}
}
contract C22 is C23{
}
contract P15{
        contract C24{
                function c() public payable {}
        }

        contract C25 is C24{
        }

        contract C26 is C24, C17 {}

        contract C27 {
                function c() public payable {}
        }
}
contract P10{
        contract C25 is C24{}
        contract C26 is C24, C17{}
        contract C27 is C24{}
}
contract P16{
        contract C26 is C24, C17{}
}
contract P17{
        contract C27 is C24{}
}
contract P13{
        contract C27 {
                function c() public payable {}
        }
}
contract Caller {
        function getBalance() returns (uint256){
                return address(this).balance;
        }

        function test(uint x) public returns (uint256) {
                (uint256, uint256) memory memory = abi.decode(_value, (address,address));
                (uint256, uint256) memory memory2 = abi.decode(_value, (address,address,address));
                int[] memory c = abi.decode(_value, (int[]));
                bool memory memory3;
                abi.decode(_value, (uint,bool,int));
                return abi.decode(_value, (address,uint));
        }

        function test2() public returns (uint256) {
                (uint256, uint256) memory memory = abi.decode(_value, (address,address));
                (uint256, uint256) memory memory2 = abi.decode(_value, (address,address,address));
        }
        function test3() public returns (uint256) {
                (uint256, uint256) memory memory = abi.decode(_value, (address,address));
                (uint256) memory memory2 = abi.decode(_value, (uint));
        }
}
