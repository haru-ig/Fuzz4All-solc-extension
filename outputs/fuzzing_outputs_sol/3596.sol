pragma solidity ^0.8.0;

import { MuteSemantic4 } from "./MutateSemantic4.sol";
contract MutateSemantic6 {
    function badMutateSemantic6(uint a, uint b) public {
        MuteSemantic4 myContract = new MuteSemantic4();
        uint256 myRe;
        myRe = 0;
        myRe = myContract.add(a, b);
        myRe;
        myContract.mult(a, b);
    }

    function badMutateSemantic6WithCaller(uint a, uint b) public {
        MutateSemantic6WithCaller myContract = new MutateSemantic6WithCaller();
        uint256 myRe;
        myRe = 0;
        myRe = myContract.add(a, b);
        myRe;
        myContract.mult(a, b);
    }

    function badMutateSemantic6NoCaller(uint a, uint b) public {
        MutateSemantic6NoCaller myContract = new MutateSemantic6NoCaller();
        uint256 myRe;
        myRe = 0;
        myRe = myContract.add(a, b);
        myRe;
        myContract.mult(a, b);
    }
}
