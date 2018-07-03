<template>
    <div class="sec">
        <section class="sec6" style="position: relative;">
            <div class="sec_box sec6_box">
                <div class="sec6_left">
                    <ul 
                        class="sec6-l_nav"
                        @mouseenter="navEnter"
                        @mouseleave="navLeave"
                        @click="navClick"
                        >
                        <li class="sel6_li" to="0">关于</li>
                        <li to="1">理念</li>
                        <li to="2">创新</li>
                    </ul>
                </div>
                <div class="sec6_right">
                    <div class="sec6_ul">
                        <ul class="sec6-r_con">
                            <li v-for="item of r_con">
                                <h5>{{item.tit}}</h5>
                                <p>{{item.txt}}</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="sec6_btm">
                    <ul class="sec6-btm_ul">
                        <li v-for="item_li of btm_con">
                            <b>{{item_li.btm_tit}}</b>
                            <span>{{item_li.btm_txt}}</span>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                r_ul: '',
                btm_ul: '',
                li_nav: '',
                index: '',
                index_btm: '',
                time_ul: '',
                time_btm: '',
                r_con: [],
                btm_con: []
            }
        },
        methods: {
            autoSwper_r(){
                this.time_ul = setInterval(() => {
                    this.index ++;
                    this.swper_r();
                }, 3000);
            },
            swper_r(){
                let len = document.querySelectorAll('.sec6-r_con>li').length - 1;
                this.dpSwper_r(len);
                this.r_ul = document.querySelector('.sec6-r_con');
                this.li_nav = document.querySelectorAll('.sec6-l_nav>li');
                this.li_nav.forEach((item)=>{
                    item.classList.remove('sel6_li');
                })
                this.li_nav[this.index].classList.add('sel6_li');
                this.r_ul.style.marginLeft = (-100 * this.index) + '%';
            },
            autoSwper_btm(){
                this.index_btm ++;
                this.btm_ul = document.querySelector('.sec6-btm_ul');
                let len = document.querySelectorAll('.sec6-btm_ul>li').length - 5;
                if(this.index_btm > len){
                    this.index_btm = 0;
                }
                if(this.index_btm < 0){
                    index_btm = len;
                }
                this.btm_ul.style.marginLeft = (-20 * this.index_btm) + '%';
            },
            dpSwper_r(len){
                if(this.index > len){
                    this.index = 0;
                }
                if(this.index < 0){
                    this.index = len;
                }
            },
            navEnter(){
                clearInterval(this.time_ul);
            },
            navLeave(){
                this.autoSwper_r();
            },
            navClick(event){
                let target = event.target;
                this.index = target.getAttribute('to');
                this.swper_r();
            },
            getData(){
                //axios请求数据
                this.$axios.get('/api/sec6')
                .then((result) => {
                    this.r_con = JSON.parse(result.data[0].r_con);
                    this.btm_con = JSON.parse(result.data[0].btm_con);
                })
                .catch(function(err){
                    throw err;
                })   
            }
        },
        mounted(){
            this.getData();
            this.time_btm = setInterval(this.autoSwper_btm, 2000);
            this.autoSwper_r();
        },
        activated(){
            clearInterval(this.time_ul);
            clearInterval(this.time_btm);
            this.time_btm = setInterval(this.autoSwper_btm, 2000);
            this.autoSwper_r();
            sessionStorage.setItem('dex', 5);
        },
        deactivated(){
            clearInterval(this.time_ul);
            clearInterval(this.time_btm);
        },
        beforeDestroy(){
            
        }
    }
</script>