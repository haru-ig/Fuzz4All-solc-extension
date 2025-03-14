pragma solidity ^0.8.0;
contract MutatedArray
{
    function mutatedSubtr(uint a, uint b, uint[] memory x) public pure returns(uint) {

        if(a > b)
            return a - b;
        else
            return x.length + 1;
        }
    function mutatedMult(uint a, uint b, [uint[] memory] memory x) public pure returns([uint[] memory]) {
        uint[] memory y = [1, 2, 3, 4, 5, 6];

        if(a > b)
        {
            x[0] += a;
            x[1] += b;
        }
        else
        {
            x[0] /= b;
            x[1] /= a;
        }
        return x;



        }
}
