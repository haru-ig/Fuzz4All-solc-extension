pragma solidity ^0.8.0;
contract OptimizelyExample77 {
    constructor() {}
}


pragma solidity ^0.8.0;
contract OptimizelyExample78 {
    constructor() {
        uint256 daysToLastTransaction = 180 days;


        uint256 NumberOfTimesLastTransaction = 0;
        uint256 timeSinceLastTransaction = 5 days;

        do {
            NumberOfTimesLastTransaction++;


            assembly { let i := 0 }
            for while(timeSinceLastTransaction := timeSinceLastTransaction - 1) do {


                assembly {



                    i := sub(5, sub(1, mul(i, 1)))
                    if {eq(lt(i, 5), true)} {break}
                }
            }
        } while(timeSinceLastTransaction >= 1 days && timeSinceLastTransaction <= daysToLastTransaction);
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample79 {
    constructor() {

        function highLevelProgram() public returns (uint256) {
            return 0;
        }


        function highLevelProgram2() public pure returns (uint256) {
            uint256 amount;
            {

                uint2
