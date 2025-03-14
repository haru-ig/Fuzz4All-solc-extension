pragma solidity ^0.8.0;
contract Mutated {
function mutate(uint256[] memory _arr) public {
_arr[0].mutate1();
}
function mutate1( ) public {
}
}

pragma solidity ^0.8.0;
contract Mutated {
    function mutate(uint256[] memory a) public {
        a.mutate1();
    }
    function mutate1( ) public {
    }
}
pragma solidity ^0.8.0;
contract Mutated {
    function mutate (uint a) public {
        a.mutate1();
    }
    function mutate1( ) public {
    }
}
contract Mutated {
    function mutate1 () public payable {
    }

}
