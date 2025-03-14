pragma solidity ^0.8.0;
contract C {
    function func() public {
        uint z_init = 3;
        bytes32 key_init;
        uint z_next_init = 1;
        uint z_next_mut;
        uint z_update = 1;
        bytes32 key_update_copy;
        uint z_update_copy;
        uint z_update_copy_prev;
        (key_init, z_init) = generateKey(6);
        (key_update_copy, z_update_copy) = generateKey(1);
        (key_update_copy_prev, z_update_copy_prev) = generateKey(0);
        C a = new C();
        a.load(key_init,z_init);
        a.func();
        C b = new C();
        b.set(z_update_copy);
        b.func();
        C c = new C();
        c.load(key_update_copy_prev,z_update_copy_prev);
        c.load(key_update_copy,z_update_copy);
        c.func();
        C d = new C();
        C e = new C();
        bytes32 key_load_update;
        (key_load_update, _) = generateKey(1);

        d.load(key_load_update,z_update);
        d.func();

        e.store(key_load_update, 'h', key_load_update);
        d.func();
        e.store(key_load_update, 'e', keccak256(abi.encode('0x0a',1)));
        d.func();
        bytes32 key_store_update;
        (key_store_update, _) = generateKey(0);
        if (0 < 1) {
            e.store(key_store_update, 'c', '0x0a');
        } else {
            e.store(ke
