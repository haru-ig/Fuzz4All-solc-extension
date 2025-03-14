pragma solidity ^0.8.0;
contract BahBahMutant {
    function getBahBah() private pure {
        bah();
    }
    function bah() public pure {
    }
}
contract MutantMutantContract2 is BahBahMutant {
}

pragma solidity ^0.8.0;
contract BahBahMutant2 {
    function getBahBah() private pure {
        bah();
        cah();
    }
    function bah() public pure {
    }
    function cah() public pure {
    }
}<fim_middle>contract MutantMutantContract3 is BahBahMutant2 {
    function getBahBah() private pure {
        bah();
    }
    function bah() public pure {
    }
}
contract MutantMutantContract4 is BahBahMutant2 {
    function getBahBah() private pure {
        bah();
        cah();
    }
}
