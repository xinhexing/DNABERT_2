export DATA_PATH=../GUE
export LR=3e-5
export OUTPUT_PATH=../results/alvis/GUE
export TRAIN_PATH=..

echo "The provided data_path is $DATA_PATH"

for seed in 42
do
    for repeat in 1 #2 3
    do
        # for data in H3 H3K14ac H3K36me3 H3K4me1 H3K4me2 H3K4me3 H3K79me3 H3K9ac H4 H4ac
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/EMP/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_EMP_${data}_seed${seed} \
        #         --model_max_length 128 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 3 \
        #         --fp16 \
        #         --save_steps 200 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 200 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done

        # for data in prom_core_all prom_core_notata
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/prom/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_prom_${data}_seed${seed} \
        #         --model_max_length 20 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 4 \
        #         --fp16 \
        #         --save_steps 400 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 400 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done


        # for data in prom_core_tata
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/prom/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_prom_${data}_seed${seed} \
        #         --model_max_length 20 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 10 \
        #         --fp16 \
        #         --save_steps 200 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 200 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done

        # for data in prom_300_all prom_300_notata
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/prom/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_prom_${data}_seed${seed} \
        #         --model_max_length 70 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 4 \
        #         --fp16 \
        #         --save_steps 400 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 400 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done

        # for data in prom_300_tata
        # do 
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/prom/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_prom_${data}_seed${seed} \
        #         --model_max_length 70 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 10 \
        #         --fp16 \
        #         --save_steps 200 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 200 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done 

        # for data in reconstructed
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/splice/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_splice_${data}_seed${seed} \
        #         --model_max_length 80 \
        #         --per_device_train_batch_size 8 \
        #         --per_device_eval_batch_size 16 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 5 \
        #         --fp16 \
        #         --save_steps 200 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 200 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done

        # for data in covid
        # do
        #     python ${TRAIN_PATH}/train.py \
        #         --model_name_or_path zhihan1996/DNABERT-2-117M \
        #         --data_path  ${DATA_PATH}/GUE/virus/${data} \
        #         --kmer -1 \
        #         --run_name DNABERT2_${vocab}_${LR}_virus_${data}_seed${seed} \
        #         --model_max_length 256 \
        #         --per_device_train_batch_size 32 \
        #         --per_device_eval_batch_size 32 \
        #         --gradient_accumulation_steps 1 \
        #         --learning_rate ${LR} \
        #         --num_train_epochs 8 \
        #         --fp16 \
        #         --save_steps 200 \
        #         --output_dir ${OUTPUT_PATH}/${data}_${seed}_${repeat} \
        #         --evaluation_strategy steps \
        #         --eval_steps 200 \
        #         --warmup_steps 50 \
        #         --logging_steps 100000 \
        #         --overwrite_output_dir True \
        #         --log_level info \
        #         --find_unused_parameters False \
        #         --seed ${seed}
        # done

        for data in 0 1 2 3 4
        do 
            python ${TRAIN_PATH}/train.py \
                --model_name_or_path zhihan1996/DNABERT-2-117M \
                --data_path  ${DATA_PATH}/GUE/mouse/${data} \
                --kmer -1 \
                --run_name DNABERT2_${vocab}_${LR}_mouse_${data}_seed${seed} \
                --model_max_length 30 \
                --per_device_train_batch_size 8 \
                --per_device_eval_batch_size 64 \
                --gradient_accumulation_steps 1 \
                --learning_rate ${LR} \
                --num_train_epochs 5 \
                --max_steps 1000 \
                --fp16 \
                --save_steps 200 \
                --output_dir ${OUTPUT_PATH}/mouse_${data}_${seed}_${repeat} \
                --evaluation_strategy steps \
                --eval_steps 200 \
                --warmup_steps 30 \
                --logging_steps 100000 \
                --overwrite_output_dir True \
                --log_level info \
                --find_unused_parameters False \
                --seed ${seed}
        done

        for data in 0 1 2 3 4
        do 
            python ${TRAIN_PATH}/train.py \
                --model_name_or_path zhihan1996/DNABERT-2-117M \
                --data_path  ${DATA_PATH}/GUE/tf/${data} \
                --kmer -1 \
                --run_name DNABERT2_${vocab}_${LR}_tf_${data}_seed${seed} \
                --model_max_length 30 \
                --per_device_train_batch_size 8 \
                --per_device_eval_batch_size 64 \
                --gradient_accumulation_steps 1 \
                --learning_rate ${LR} \
                --num_train_epochs 3 \
                --fp16 \
                --save_steps 200 \
                --output_dir ${OUTPUT_PATH}/tf_${data}_${seed}_${repeat} \
                --evaluation_strategy steps \
                --eval_steps 200 \
                --warmup_steps 30 \
                --logging_steps 100000 \
                --overwrite_output_dir True \
                --log_level info \
                --find_unused_parameters False \
                --seed ${seed}
        done
    done
done
