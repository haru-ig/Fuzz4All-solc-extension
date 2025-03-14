pragma solidity ^0.8.0;
contract Test30016a {
    constructor () public {}
    uint[] public data;
    fallback () public { data[0] = data.length; }
}
contract Test30016a_Test30016 is Test30016a {


    uint[] newdata;
}
