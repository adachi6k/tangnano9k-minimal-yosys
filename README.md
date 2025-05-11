# Tang Nano 9K Blink Demo

## 必要ツール

- yosys
- nextpnr-himbaechel
- gowin_pack
- openFPGALoader

## ビルドと書き込み

```bash
make        # 合成〜bitstream生成
make prog   # FPGA に書き込み
make clean  # 中間ファイル削除
```

## ピン割り当て

- `clk`: A9 (27MHz クロック)
- `led`: L4 (LED)
