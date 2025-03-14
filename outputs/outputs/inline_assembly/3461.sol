pragma solidity ^0.8.0;
library MyUintLib {
    function getTwo() public pure returns (uint) {
        return 2;
    }
}
contract ChangeMutagenFinal {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    address payable _owner;
    address payable _resolver;
    mapping(uint => address payable) _instances;
    uint private constant LIMIT_AMOUNT_FOR_MUTAGEN = 1000000000;
    function change (uint _value) public payable {
        if (_value > LIMIT_AMOUNT_FOR_MUTAGEN) revert("Too many mutagens");
        uint _amountClaimed = _value;
        uint counter = ONE;
        contract AddressFactory {
            function new (address _resolver) internal returns(address) {
                MyUintLib.getTwo();
                return ZERO;
            }
        }
        _resolver = AddressFactory.new(ZERO);
        while (_amountClaimed > ZERO) {
            uint _amountLeft = _amountClaimed;
            address payable _currentInstance = _instances[counter];
            while (counter!= ZERO && _amountLeft > ZERO) {
                uint currentRemainingTime = (_amountClaimed_times_counter) % (ONE);
                uint newRemainingTime = currentRemainingTime + ONE;
                _amountClaimed_times_counter = _amountClaimed_times_counter.sub(currentRemainingTime);
                uint gasDifference = _currentInstance.call.value(currentRemainingTime)("");
                uint gasCost = gasDifference.add(_amountClaimed);



                if (gasCost > 1 ether) {
                    _currentInstance.call.value(currentRemainingTime)(0);
                    if (currentRemainingTime.add(ONE).sub(newRemainingTime) > ZERO) {
                        continue;
                    } else {
                        counter = ZERO;
                        break;
                    }
                }
                _amountLeft = _amountLeft.sub(ONE);
                if (gasDifference > gasCost) {
                    _amountLeft = _amountLeft.sub(ONE);
                    uint gasLeft = gasCost.sub(_amountClaimed);
                    gasDiff -= gasLeft;
                    _resolver.transfer(gasLeft);
                    gasUsed += gasLeft;
                } else {
                    _amountClaimed_times
