fixture `My fixture`
    .page `http://127.0.0.1:3002/`;

test('MyTest', async t => {
    await t
        .expect(true).ok();
});
