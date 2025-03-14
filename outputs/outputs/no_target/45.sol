pragma solidity ^0.8.0;

interface IERC223 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IStandardToken {
    event Transfer(address indexed from, address indexed to, uint256 value);
}

pragma solidity ^0.8.0;

implementation IERC223 {
    bool internal[1 << 256];

    function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
        return interfaceId == IERC223.interfaceId;
    }

    function transfer(address destination_, uint256 _value_) public override {
        IERC223(destination_).transfer(from(msg.sender), _value_);
        emit Transfer(msg.sender, destination_, _value_);
    }

    function allowance(address owner_, address spender_) public view override returns (uint256) {
        uint256 total = allowed(owner_, spender__);
        uint256 allowed = total[0] > 0? total[2] : 0;
        return allowed;
    }

    function approve(address spender_, uint256 _value_) public override {
        allowed[msg.sender][spender] = _value_;
        emit Approval(msg.sender, spender_, _value_);
    }

    function allowed(address owner_, address spender_) public view override returns (uint256[2]) {
        return [allowed(owner_, spender__)[0], allowed(owner_, spender__)[1]];
    }

    function increaseAllowance(address spender_, uint256 addedValue_) public returns (bool) {
        allowed[msg.sender][spender__] += addedValue_;
        emit IncreaseAllowance(msg.sender, spender__, addedValue_);
        return true;
    }

    function decreaseAllowance(address spender_, uint256 subtractedValue_) public returns (bool) {
        uint256 remaining = allowed(msg.sender, spender__)[1];
        if (remianing < subtractedValue_) {
            return false;
        }

        uint newValue;
        if (subtractedValue_ > remaining) {
            newValue = 0;
        } else {
            newValue = remaining - subtractedValue_;
        }

        allowed[msg.sender][spender__] = newValue;
        emit DepreaseAllowance(msg.sender, spender__, subtractedValue_, newValue);
        return true;
    }

    function safeTransferFrom(address from_, address to_, uint256 _value_) public returns (bool) {
        emit Transfer(from_, to_, _value_);
        IERC223(to_).approve(from_, _value_);
        bool success = IERC223(to_).transferFrom(from_, _value_);
        if (!success) {
            emit Transfer(from_, to_, 0);
        }
        return success;
    }
}
