pragma solidity ^0.8.0;
contract EtherMutator {
    address[2] private owners;
    bool private _hasMutated_ = false;
    bool private _hasRun_ = false;
    function modify() public returns (bool) {
        require(!_hasMutated_);
        Mutator callerMutator = Mutator(msg.sender);
        callerMutator.modify();
        return (_hasMutated_);
    }
    receive () public payable {
        owners[1] = msg.sender;
        if (!_hasRun_) {
            _hasRun_ = true;
        } else {
            require(_hasMutated_);
            _hasMutated_ = false;

            for (uint i = 1; i < owners.length; i++) {
                require(i!= 3);
                (bool success, ) = owners[i].call{value: msg.value*4}("");
                require(success);
            }
        }
    }
}
