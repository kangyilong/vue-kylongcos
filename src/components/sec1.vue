<template>
    <div class="sec">
        <section class="sec1">
            <div class="sec_box sec0_box">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li class="active"></li>
                    <li></li>
                    <li></li>
                    <li></li>
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">
                    <div class="item">
                        <div class="item_01">
                            <div 
                                class="back_box"
                                :class="{'item01_back': item1.item1_back}"
                            >
                                <ul>
                                    <li class="angle left_top"></li>
                                    <li class="angle left_btm"></li>
                                    <li class="angle right_top"></li>
                                    <li class="angle right_btm"></li>
                                    <li class="bor left_li"></li>
                                    <li class="bor top_li"></li>
                                    <li class="bor right_li"></li>
                                    <li class="bor btm_li"></li>
                                </ul>
                            </div>
                            <div 
                                class="bor_box"
                                :class="{'item01_bor': item1.item1_bor}"
                            ></div>
                            <div class="con_box">
                                <span 
                                    class="w1 item01_w1"
                                    :class="{'item01-in_9': item1.item1_isSp, 'item01-out_9': !item1.item1_isSp}"
                                >9</span>
                                <span 
                                    class="w2 item01_w2"
                                    :class="{'item01-in_sp': item1.item1_isSp, 'item01-out_sp': !item1.item1_isSp}">
                                    <span class="w21">年专注 · 互联网+</span>
                                    <span class="w22">WEBSITE</span>
                                    <span class="w23">
                                        始于 2009 - 2017 展望未来
                                        <br>
                                        专注于设计体验，专业于解决方案
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item_02">
                            <div 
                                class="item02_left"
                                :class="{'item02_c': item2.item02_c}"
                            >
                                <div 
                                    class="item02-left_con"
                                    :class="{'item02-left_conIn': item2.item02_p, 'item02-left_conOut': !item2.item02_p}"
                                >
                                    <p class="item02-left_p1">设计控，也醉了</p>
                                    <p class="item02-left_p2">I·DESIGN</p>
                                    <p class="item02-left_p3">
                                        不是非要高大上，只是醉心于设计
                                        <br>
                                        我们想，再上一个好案例
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item_03">
                            <div class="item3_box">
                                <div class="w item3_w">
                                    <p 
                                        class="w1"
                                        :class="{'w1_in': item3.w1_isNo, 'w1_out': !item3.w1_isNo}"
                                        >技术派，论研发</p>
                                    <div 
                                        class="item03-w2_box w2_out"
                                        :class="{'w2_in': item3.w2_isNo, 'w1_out': !item3.w2_isNo}"
                                    >
                                        <p class="w2">DEVELOPER</p>
                                        <p class="w3">
                                            我说，业界没有最好的技术，只有最棒的技术开发者
                                            <br>
                                            定制研发，为您的客户和团队
                                        </p>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="item_04">
                            <div class="item3_box item_04_box">
                                <div class="w item4_w">
                                    <p 
                                        class="w1"
                                        :class="{'w1_in': item4.w1_isNo, 'w1_out': !item4.w1_isNo}"
                                    >先入为主，布局未来</p>
                                    <div 
                                        class="item04-w2_box"
                                        :class="{'w1_in': item4.w2_isNo, 'w1_out': !item4.w2_isNo}"
                                    >
                                        <p class="w2">LAYOUT</p>
                                        <p class="w3">
                                            全面布局<em>PC</em>端与<em>移动</em>端
                                            <br>
                                            抢占头等商机
                                            <br>
                                            基于<em>Html5</em>响应式布局，智能识别多种终端设备
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>

                  <!-- Controls -->
                  <a 
                        class="left carousel-control" 
                        role="button" 
                        data-slide="prev"
                        @click="sec_cLift"
                        @mouseenter="clearItem"
                        @mouseleave="autoItem">
                    <i class="iconfont icon-left"></i>
                  </a>
                  <a 
                        class="right carousel-control" 
                        role="button" 
                        data-slide="next"
                        @click="sec_cRight"
                        @mouseenter="clearItem"
                        @mouseleave="autoItem">
                    <i class="iconfont icon-right"></i>
                  </a>
                </div>
            </div>
            <div class="banner-down" @click="nextClick">
                <i class="iconfont icon-jiantouxia"></i>
            </div>
        </section>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                index: 0,
                time_itm: '',
                carousel: '',
                slide_to: [],
                item1: {
                    item1_isSp: false,
                    item1_back: false,
                    item1_bor: true
                },
                item2: {
                    item02_c: false,
                    item02_p: false
                },
                item3: {
                    w1_isNo: false,
                    w2_isNo: false
                },
                item4: {
                    w1_isNo: false,
                    w2_isNo: false
                }
            }
        },
        methods: {
            autoApload(){
                setTimeout(()=>{
                    this.$set(this.item1, 'item1_isSp', true);
                }, 10);
                setTimeout(()=>{
                    this.$set(this.item1, 'item1_back', true);
                }, 20);
                setTimeout(()=>{
                    this.$set(this.item1, 'item1_bor', false);
                }, 30);
            },
            item02In(){
                setTimeout(()=>{
                    this.$set(this.item2, 'item02_c', true);
                    setTimeout(()=>{
                        this.$set(this.item2, 'item02_p', true);
                    }, 500);
                }, 10);  
            },
            item03In(){
                setTimeout(()=>{
                    this.$set(this.item3, 'w1_isNo', true);
                    this.$set(this.item3, 'w2_isNo', true);
                }, 10);
            },
            item04In(){
                setTimeout(()=>{
                    this.$set(this.item4, 'w1_isNo', true);
                    this.$set(this.item4, 'w2_isNo', true);
                }, 20);
            },
            sec_cLift(){
                this.index --;
                this.pdIndex();
                this.carousel.style.marginLeft = (-100 * this.index) + '%';
                this.itemAuto();
                this.slide_to[this.index].classList.add('active');
            },
            sec_cRight(){
                this.index ++;
                this.pdIndex();
                this.carousel.style.marginLeft = (-100 * this.index) + '%';
                this.itemAuto();
                this.slide_to[this.index].classList.add('active');
            },
            pdIndex(){
                if(this.index >= 4){
                    this.index = 0;
                }
                if(this.index < 0){
                    this.index = 3;
                }
                this.slide_to.forEach((item)=>{
                    item.classList.remove('active');
                })
            },
            itemAuto(){
                switch (this.index){
                    case 0: this.autoApload(); break;
                    case 1: this.item02In(); break;
                    case 2: this.item03In(); break;
                    case 3: this.item04In(); break;
                }
                //item1
                this.item1.item1_isSp = false;
                this.item1.item1_back = false;
                this.item1.item1_bor = true;

                //item2
                this.item2.item02_c = false;
                this.item2.item02_p = false;

                //item3
                this.item3.w1_isNo = false;
                this.item3.w2_isNo = false;

                //item4
                this.item4.w1_isNo = false;
                this.item4.w2_isNo = false;
            },
            autoItem(){
                this.carousel = document.querySelector('.carousel-inner');
                this.slide_to = document.querySelectorAll('.carousel-indicators>li');
                this.time_itm = setInterval(()=>{
                    this.index ++;
                    this.pdIndex();
                    this.carousel.style.marginLeft = (-100 * this.index) + '%';
                    this.itemAuto();
                    this.slide_to[this.index].classList.add('active');
                }, 4000)
            },
            clearItem(){
                clearInterval(this.time_itm);
            },
            nextClick(){
                this.$router.push('/sec2');
            }
        },
        mounted(){
            this.autoApload();
            this.autoItem();
        },
        activated(){
            this.clearItem();
            this.autoItem();
            sessionStorage.setItem('dex', 0);
        },
        deactivated(){
            this.clearItem();

        },
        beforeDestroy(){
            
        }
    }
</script>
