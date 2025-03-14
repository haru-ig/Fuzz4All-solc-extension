pragma solidity ^0.8.0;
contract Frobber {
    function frob (address frobber) public {
        require(msg.value > 0, "Frob must pay");
        emit FrobberClicked(frobber);
    }
    event FrobberClicked(address frobber);
}
