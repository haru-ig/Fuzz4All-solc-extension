pragma solidity ^0.8.0;
contract Capped {
    uint32 constant CAP = uint32(10 ** 15);
    uint256  totalCapped = 0;
    uint256  minCapped = 0;

    function setCapped(uint256 cap_) public {
        require(cap_ > 0, "");
        minCapped = totalCapped;
        require(cap_ > minCapped, "cap value must be greater than or equal to min capped!");
        uint256 newCap = minCapped + cap_;
        require(newCap <= CAP, "cap has not been met");
        totalCapped = newCap;
    }
}
contract NotCapped {
    function setCapped(uint256 cap_) public {
    }
}
contract Mixed {
    Capped capped;
    bool enabled;

    function switchCapped(uint256 amount_) public {
        totalCapped += amount_;
        minCapped += amount_;
        capped.setCapped(totalCapped);

    }

    function toggle() public {
        enabled =!enabled;
        if(enabled)
            capped.setCapped(totalCapped);
        else
            capped.setCapped(0);
    }
}
contract MixedNotCappedEnabled {
    uint256 totalCapped = 0;
    uint256 minCapped = 0;

    function switchCapped(uint256 amount_) public {
        totalCapped += amount_;
        minCapped += amount_;

        capped.switchCapped(amount_);
    }

    function toggle() public {
        capped.setCapped(0);
    }
}
contract MixedNotCappedDisabled {
    uint256 totalCapped = 0;
    uint256 minCapped = 0;

    function switchCapped(uint256 amount_) public {
        totalCapped += amount_;
        minCapped += amount_;
        capped.switchCapped(amount_);
    }

    function toggle() public {
