pragma solidity ^0.8.0;
contract SemanticallyEquivalenty21 {
    constructor () public {
        emit Log(msg.sender,"", "");
    }
    event Log(address value1, string value2, string value3);
}
contract SemanticallyEquivalenty22 is SemanticallyEquivalenty20 {
    constructor () public {

    }
}
contract SemanticallyEquivalenty23 is SemanticallyEquivalenty21 {
    constructor () public {

    }
}
contract SemanticallyEquivalenty24 is SemanticallyEquivalenty22 {
    constructor () public {

    }
}
contract SemanticallyEquivalenty25 is SemanticallyEquivalenty21 {
    constructor () public {
        emit Log(msg.sender,"", "");
    }
}<jupyter_output><empty_output>
