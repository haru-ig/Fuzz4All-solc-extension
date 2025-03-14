pragma solidity ^0.8.0;
contract ExtendedArithmetic_UncheckedBlock {
    function noChange() public pure { }
}
contract ArithTestCheck {
    function test1() public pure {
        if (check(100)) {

        }
        ExtendedError error;

        if (check(2 ** 128 - 1)) {
            if (!error.noChange().check(2 ** 128 - 1))
                return;
        }
        if (0 < 2 * 2 ** 128 && 2 * 2 ** 128 < 2 ** 127)
            return;
        ExtendedSuccess success;
        if (0 < 2 ** 128 | ^ 0 <= 2 ** 127) {
            if ((!error.noChange().check(2 ** 128)) || (!success.noChange().check(2 ** 127)))
                return;
            ExtendedError success2;
            if (error.noChange().check(2 ** 128) && success.noChange().check(2 ** 127) &&
                ExtendedError(error).noChange().check(2 * 2 ** 128) &&
                ExtendedSuccess(success).noChange().check(2 * 2 ** 127))
                return;
        }
        if (!ExtendedError(error).noChange().check(2 ** 128))
            return;
        ExtendedSuccess success2;
        if ((0 < 2 * 2 ** 128 && 2 * 2 ** 128 < 2 ** 127) | 2 ** 128 >= 0xFFFFFFFF)
            return;
        if ((0 < 2 ** 128 &!ExtendedSuccess(success).noChange().check(2 ** 127)) &!success2.noChange().check(2 ** 127))
            return;
        if (!check(2 ** 128))
            return;
        var b = ExtendedSuccess(success);
        b = success;
        if (!ExtendedError(error).noChange().check(2 ** 128))
            return;
        var c = ExtendedError(error);
        c = success2;
        if (!ExtendedError(error).noChange().check(2 ** 128))
            return;
        var d = check(2 * 2 ** 128);
        if (d | 2 ** 128 < 0xFFFFFFFF)
            return;
        var e = check(2 ** 127);
        if (e &!b.noChange().check(2 ** 127))
            return;
        if (!check(2 ** 128
