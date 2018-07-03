<template>
    <div class="sec">
        <section class="sec5">
            <div class="sec_box sec5_box">
                <div class="sec2_todo" style="margin-bottom: 5%;margin-top: 15%;">我们提供的解决方案</div>
                <div class="swiper-container">
                    <div class="sec5_ul">
                        <ul class="sec5_li">
                            <li v-for="item of sec5_list">
                                <div class="sec5-li_hea">
                                    <span><i class="iconfont" :class="item.cla_i01"></i></span>
                                    <span><i class="iconfont" :class="item.cla_i02"></i></span>
                                    <span><i class="iconfont" :class="item.cla_i03"></i></span>
                                </div>
                                <div class="sec5-li_con">
                                    <p>{{item.con_p01}}</p>
                                    <p>{{item.con_p02}}</p>
                                    <p>{{item.con_p03}}</p>
                                    <p>{{item.con_p04}}</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="sw sw5 sw5_left">
                        <i 
                            class="iconfont icon-left"
                            @mouseenter="sw5Enter"
                            @mouseleave="sw5Leave"
                            @click="sw5_left"
                            />
                    </div>
                    <div class="sw sw5 sw5_right">
                        <i 
                            class="iconfont icon-right"
                            @mouseenter="sw5Enter"
                            @mouseleave="sw5Leave"
                            @click="sw5_right"
                        />
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                sec5_li: '',
                index: 0,
                time_ul: '',
                sec5_list: []
            }
        },
        methods: {
            swper_ul(){
                this.sec5_li = document.querySelector('.sec5_li');
                this.sec5_li.style.marginLeft = (-25 * this.index) + '%';
            },
            dpSwper(){
                if(this.index > 4){
                    this.index = 0;
                }
                if(this.index < 0){
                    this.index = 4;
                }
            },
            sw5Enter(){
                clearInterval(this.time_ul);
            },
            sw5Leave(){
                this.autoSwper();
            },
            sw5_left(){
                this.index --;
                this.dpSwper();
                this.swper_ul();
            },
            sw5_right(){
                this.index ++;
                this.dpSwper();
                this.swper_ul();
            },
            autoSwper(){
                this.time_ul = setInterval(() => {
                    this.index ++;
                    this.dpSwper();
                    this.swper_ul();
                }, 3000);
            },
            getData(){
                //axios请求数据
                this.$axios.get('/api/sec5')
                .then((result) => {
                    this.sec5_list = result.data;
                })
                .catch(function(err){
                    throw err;
                })   
            }
        },
        mounted(){
            this.getData();
            this.autoSwper();
        },
        activated(){
            clearInterval(this.time_ul);
            this.autoSwper();
            sessionStorage.setItem('dex', 4);
        },
        deactivated(){
            clearInterval(this.time_ul);
        },
        beforeDestroy(){
            
        }
    }
</script>