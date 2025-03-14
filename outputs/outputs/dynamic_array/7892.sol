pragma solidity ^0.8.0;
contract Test25 {
    uint[] public foo;
    function f(uint[] memory[] calldata) public payable {
        unchecked {
        }
        foo = foo;
    }

    function g(uint[] memory memory) public payable{
        unchecked{ }
        foo = foo;
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Test26{
    uint[] public list;

    function addToList (uint[] memory memory) public {
        unchecked{
            for(uint i = list.length; i >= 0; i--){
                list[0] = uint(1);
            }
            return 1;
        }
        list = list;
    }
}
