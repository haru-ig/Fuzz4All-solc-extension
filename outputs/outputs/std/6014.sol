pragma solidity ^0.8.0;
library Arithmetic {
}

pragma solidity ^0.8.0;
contract Contract {
    uint countOne = 1;
    uint countTwo = 2;
    uint countThree = 3;
    uint countFour = 4;
    uint countFive = 5;
    function incrementOne() public {
        countOne = countOne + onePlusOne;
        return(countOne);
    }
    function incrementTwo() public {
        countTwo = countTwo + twoPlusTwo;
        return(countTwo);
    }
    function incrementThree() public {
        countThree = countThree + threePlusThree;
        return(countThree);
    }
    function incrementFour() public {
        countFour = countFour + fourPlusFour;
        return(countFour);
    }
    function incrementFive() public {
        countFive = countFive + fivePlusFive;
        return(countFive);
    }
}
