for product_codename in $(cat vendor/disco/configs/products.txt)
do
    add_lunch_combo disco_$product_codename-userdebug
done
