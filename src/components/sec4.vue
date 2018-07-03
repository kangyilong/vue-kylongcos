<template>
    <div class="sec">
        <section class="sec4">
            <div class="sec_box sec4_box">
                <div class="sec2_todo" style="margin-bottom: 5%;margin-top: 11%;">我们的客户</div>
                <div class="swiper-container">
                    <div class="sec4_ul">
                        <ul class="sec_ul">
                            <li 
                                v-for="(item, index) of sec4_imgList" 
                                @mouseenter="imgEnter(index)"
                                @mouseleave="imgLeave">
                                <img 
                                :src="item.img_url" 
                                :class="{'tada animated infinite': img_isNo && img_id === index}"
                                />
                            </li>
                        </ul>
                    </div>
                    <div class="sw sw4 sw4_left">
                        <i 
                            class="iconfont icon-left"
                            @mouseenter="sw4_enter"
                            @mouseleave="sw4_leave"
                            @click="sw4_cLeft" 
                        />
                    </div>
                    <div class="sw sw4 sw4_right">
                        <i 
                            class="iconfont icon-right" 
                            @mouseenter="sw4_enter"
                            @mouseleave="sw4_leave"
                            @click="sw4_cRight" 
                        />
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
/*------------------------------------------------合作*/
    export default {
        data(){
            return {
                sec_ul: '',
                index: 0,
                img_isNo: false,
                img_id: 0,
                time_li: '',
                time_ul: '',
                sec4_imgList: []
            }
        },
        methods: {
            imgEnter(index){
                this.img_id = index;
                clearInterval(this.time_li);
                let i = 0;
                this.time_li = setInterval(()=>{
                    i ++;
                    if(i > 40){
                        this.img_isNo = true;
                        setTimeout(()=>{
                            this.img_isNo = false;
                        }, 800);
                    }
                }, 10);
            },
            imgLeave(){
                clearInterval(this.time_li);
            },
            swper_ul(){
                this.sec_ul = document.querySelector('.sec_ul');
                this.index ++;
                this.sec_ul.style.marginLeft = (-25 * this.index) + '%';
                if(this.index >=4){
                    this.index = -1;
                }
            },
            bor_li(){
                let li = $.makeArray($('.sec_ul li'));
                let len = (li.length + 1) / 2;
                li.forEach((item, index)=>{
                    if(index < len){
                        $(item).css('border-bottom', '1px dotted #ddd');
                    }
                })
            },
            sw4_enter(){
                clearInterval(this.time_ul);
            },
            sw4_leave(){
                this.time_ul = setInterval(this.swper_ul, 3000);
            },
            sw4_cLeft(){
                if(this.index <= 0){return;};
                this.index = this.index - 2;
                this.swper_ul();
            },
            sw4_cRight(){
                this.swper_ul();
            },
            autoSwper(){
                this.time_ul = setInterval(this.swper_ul, 3000);
            },
            getData(){
                //axios请求数据
                this.$axios.get('/api/sec4')
                .then((result) => {
                    this.sec4_imgList = result.data;
                })
                .catch(function(err){
                    throw err;
                })   
            }
        },
        mounted(){
            this.getData();
            setTimeout(()=>{
                this.bor_li();
            }, 20); 
            this.autoSwper();
        },
        activated(){
            clearInterval(this.time_ul);
            this.autoSwper();
            sessionStorage.setItem('dex', 3);
        },
        deactivated(){
            clearInterval(this.time_ul);
        },
        beforeDestroy(){
            
        }
    }

</script>