pragma solidity ^0.8.0;
contract old256{
    function old()public{
        unchecked{
            uint256 x;
            x=5 + 12;
            x=x * 3;
        }
    }
}

pragma solidity ^0.8.0;
contract old256{
    function old()public{
        unchecked{
            uint256 x;
            x=5 + 12;
            old256();
        }
    }
}
