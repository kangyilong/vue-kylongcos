<template>
    <div class="sec">
        <section class="sec3">
            <div class="sec_box sec3_box">
                <div class="sec2_todo" style="margin-bottom: 5%;margin-top: 11%;">我们的案例</div>
                <div class="swiper-container">
                    <div class="show-li_box">
                        <ul class="sec3_ul">
                            <li 
                                class="sec3_li sec3_li01" 
                                v-for="(item, index) of sec3_list"
                                @mouseenter="sec3_liEvent(index)"
                                @mouseleave="sec3_liLeave">
                                <div class="sec_img"></div>
                                <div class="sec3-li_box01">
                                    <p><b>+</b></p>
                                </div>
                                <p :class="{'sec3_col': isCol && li_dex === index}">{{item.txt}}</p>
                                <div class="sec3-li_box02"></div>
                            </li>
                        </ul>
                    </div>
                    <div class="sw sw_left">
                        <i 
                            class="iconfont icon-left" 
                            @mouseenter="changeEnter"
                            @mouseleave="changeLeave"
                            @click="sw_left"
                            />
                    </div>
                    <div class="sw sw_right">
                        <i 
                            class="iconfont icon-right"
                            @mouseenter="changeEnter"
                            @mouseleave="changeLeave"
                            @click="sw_right"
                        />
                    </div>
                    <div class="sec3_foo">
                        <p><b class="mo_b">MORE</b><span class="more_sp"></span></p>
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
                sec3_list: [
                    
                ],
                li_i: 0,
                li_dex: 0,
                time_ul: '',
                isCol: false,
                sec3_ul: ''
            }
        },
        methods: {
            autoBackImage(){
                let sec_img = document.querySelectorAll('.sec_img');
                sec_img[0].style.backgroundImage = 'url(/static/images/thumb8.jpg)';
                sec_img[1].style.backgroundImage = 'url(/static/images/thumb7.jpg)';
                sec_img[2].style.backgroundImage = 'url(/static/images/thumb5.jpg)';
                sec_img[3].style.backgroundImage = 'url(/static/images/thumb6.jpg)';
                sec_img[4].style.backgroundImage = 'url(/static/images/thumb10.jpg)';
                sec_img[5].style.backgroundImage = 'url(/static/images/thumb4.jpg)';
                sec_img[6].style.backgroundImage = 'url(/static/images/thumb3.jpg)';
                sec_img[7].style.backgroundImage = 'url(/static/images/thumb2.jpg)';
                sec_img[8].style.backgroundImage = 'url(/static/images/thumb1.jpg)';
            },
            sec3_liEvent(index){
                this.li_dex = index;
                this.isCol = true;
            },
            sec3_liLeave(){
                this.isCol = false;
            },
            ulSwper(){
                this.sec3_ul = document.querySelector('.sec3_ul');
                this.sec3_ul.style.marginLeft = -33.33 * this.li_i + '%';
            },
            pdLi_i(){
                if(this.li_i > 6){
                    this.li_i = 0;
                }
                if(this.li_i < 0){
                    this.li_i = 6;
                }
            },
            changeEnter(){
                clearInterval(this.time_ul);
            },
            changeLeave(){
                this.time_ul = setInterval(()=>{
                    this.li_i ++;
                    this.pdLi_i();
                    this.ulSwper();
                }, 4000);
            },
            sw_left(){
                this.li_i --;
                this.pdLi_i();
                this.ulSwper();
            },
            sw_right(){
                this.li_i ++;
                this.pdLi_i();
                this.ulSwper();
            },
            autoSwper(){
                this.time_ul = setInterval(()=>{
                    this.li_i ++;
                    this.pdLi_i();
                    this.ulSwper();
                }, 4000);
            },
            getData(){
                //axios请求数据
                this.$axios.get('/api/sec3')
                .then((result) => {
                    this.sec3_list = result.data;
                })
                .catch(function(err){
                    throw err;
                })   
            }
        },
        beforeMount(){
            
        },
        mounted(){
            this.getData();
            setTimeout(()=>{
                this.autoBackImage();
            }, 20)
            this.autoSwper();
        },
        activated(){
            clearInterval(this.time_ul);
            this.autoSwper();
            sessionStorage.setItem('dex', 2);
        },
        deactivated(){
            clearInterval(this.time_ul);
        },
        beforeDestroy(){
            clearInterval(this.time_ul);
        }
    }
</script>

