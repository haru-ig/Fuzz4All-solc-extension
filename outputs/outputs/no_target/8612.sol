pragma solidity ^0.8.0;
contract SemanticsCheck {

    function get(uint minValue_, uint maxValue_) public pure returns (uint) {
        uint a_;
        uint b_ = 0;
        uint carry = maxMinValueDiff(minValue_, maxValue_);
        uint diff_ = (maxValue_ - minValue_ + 1) / 2;

        if (carry > 0) {

            b_ = (carry / diff_ + 1) * diff_;
        }

        if (carry < 0 || (a_ = b_ - diff_) == uint256(-1)) {
            b_ = uint256(-1);
        }
        return ((a_ << 8) | b_);
    }

    function maxMinValueDiff(uint a_, uint b_) private pure returns (uint) {
        if (a_ < 0xffffffffc0dea12c) {
            return a_ - b_;
        }
        return a_ + 2 ** 256 - b_;
    }
}
contract Example {
    Mutated mutated;

    using SemanticsCheck for uint;

    function test() public {
        mutated.get(1, 7);
        mutated.get(1, -1);
        uint160 minValue = 1;
        uint160 maxValue = 16;
        mutated.get(minValue, maxValue);
        uint256 diff = minValue - maxValue + 1;
        mutated.get(minValue, maxValue + diff);
    }
}
