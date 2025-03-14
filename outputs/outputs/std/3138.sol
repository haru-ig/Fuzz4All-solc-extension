pragma solidity ^0.8.0;
contract Mutating {
    uint256[2] public a;
}

pragma solidity ^0.8.0;
contract Modifying {
    uint256[2] public a;
}

pragma solidity ^0.8.0;
contract Mutations {
    uint256[2] public a;
    function add(uint256[2] memory b) public returns(uint256) {
    return(uint256(a)+uint256(b));
    }
    function mul_2(uint256[2] memory b, uint256 a) public returns(uint256) {
    return(uint256(a)*uint256(b));
    }
    function code(type t1, string memory s1) public {


        Mutating newContract;
        newContract.a = [a[0]+uint256(b[0]),a[1]+uint256(b[1])];


        Mutations.Mutating(newContract()).mul_2(b, b);

        Mutations(newContract).add(a);
    }
}

pragma solidity ^0.8.0;
contract Mutating {
    uint256[2] public a;
}

pragma solidity ^0.8.0;
contract Mutating2 {
    uint256[2] public a;
    constructor (uint256 c) public { a[0] = c; a[1] = c; }
}
/*
 * This contract will mutate both storage variables and code by changing the
